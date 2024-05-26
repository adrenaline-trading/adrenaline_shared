defmodule AdrenalineShared.History do
  @moduledoc """
  History structure
  """
  alias AdrenalineShared.History.Header

  @enforce_keys [ :header, :data]
  defstruct @enforce_keys

  @type data() :: term()

  @type t() ::
          %__MODULE__{
            header: Header.t(),
            data: data()
          }

  @spec new( map() | keyword()) :: t()
  def new( args) do
    struct!( __MODULE__, args)
  end
end
