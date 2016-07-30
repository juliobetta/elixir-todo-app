defmodule Todo.Item do
  defstruct id: nil,
            description: nil,
            completed: false

  def new(description) do
    %__MODULE__{
      id: UUID.uuid4(),
      description: description
    }
  end
end
