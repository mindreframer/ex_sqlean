defmodule ExSqlean.CacheETS do
  use GenServer
  @name :ex_sqlean_cache

  def init(arg) do
    :ets.new(@name, [
      :set,
      :public,
      :named_table,
      {:read_concurrency, true},
      {:write_concurrency, true}
    ])

    {:ok, arg}
  end

  def start_link(arg) do
    GenServer.start_link(__MODULE__, arg, name: __MODULE__)
  end

  def get(key) do
    case :ets.lookup(@name, key) do
      [] ->
        nil

      [{_key, value}] ->
        value
    end
  end

  def put(key, value) do
    :ets.insert(@name, {key, value})
  end
end
