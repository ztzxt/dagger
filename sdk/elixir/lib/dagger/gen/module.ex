# This file generated by `mix dagger.gen`. Please DO NOT EDIT.
defmodule Dagger.Module do
  @moduledoc "A Dagger module."
  use Dagger.QueryBuilder
  @type t() :: %__MODULE__{}
  defstruct [:selection, :client]

  (
    @doc ""
    @spec dependencies(t()) :: {:ok, [Dagger.Module.t()]} | {:error, term()}
    def dependencies(%__MODULE__{} = module) do
      selection = select(module.selection, "dependencies")

      selection =
        select(
          selection,
          "dependencies dependencyConfig description generatedCode id initialize interfaces name objects sdk serve sourceDirectory sourceDirectorySubpath withInterface withObject withSource"
        )

      with {:ok, data} <- execute(selection, module.client) do
        {:ok,
         data
         |> Enum.map(fn value ->
           elem_selection = Dagger.QueryBuilder.Selection.query()
           elem_selection = select(elem_selection, "loadModuleFromID")
           elem_selection = arg(elem_selection, "id", value["id"])
           %Dagger.Module{selection: elem_selection, client: module.client}
         end)}
      end
    end
  )

  (
    @doc ""
    @spec dependency_config(t()) :: {:ok, [Dagger.String.t()]} | {:error, term()}
    def dependency_config(%__MODULE__{} = module) do
      selection = select(module.selection, "dependencyConfig")
      execute(selection, module.client)
    end
  )

  (
    @doc ""
    @spec description(t()) :: {:ok, Dagger.String.t() | nil} | {:error, term()}
    def description(%__MODULE__{} = module) do
      selection = select(module.selection, "description")
      execute(selection, module.client)
    end
  )

  (
    @doc ""
    @spec generated_code(t()) :: Dagger.GeneratedCode.t()
    def generated_code(%__MODULE__{} = module) do
      selection = select(module.selection, "generatedCode")
      %Dagger.GeneratedCode{selection: selection, client: module.client}
    end
  )

  (
    @doc "A unique identifier for this Module."
    @spec id(t()) :: {:ok, Dagger.ModuleID.t()} | {:error, term()}
    def id(%__MODULE__{} = module) do
      selection = select(module.selection, "id")
      execute(selection, module.client)
    end
  )

  (
    @doc "Retrieves the module with the objects loaded via its SDK."
    @spec initialize(t()) :: Dagger.Module.t()
    def initialize(%__MODULE__{} = module) do
      selection = select(module.selection, "initialize")
      %Dagger.Module{selection: selection, client: module.client}
    end
  )

  (
    @doc ""
    @spec interfaces(t()) :: {:ok, [Dagger.TypeDef.t()]} | {:error, term()}
    def interfaces(%__MODULE__{} = module) do
      selection = select(module.selection, "interfaces")

      selection =
        select(
          selection,
          "asInput asInterface asList asObject id kind optional withConstructor withField withFunction withInterface withKind withListOf withObject withOptional"
        )

      with {:ok, data} <- execute(selection, module.client) do
        {:ok,
         data
         |> Enum.map(fn value ->
           elem_selection = Dagger.QueryBuilder.Selection.query()
           elem_selection = select(elem_selection, "loadTypeDefFromID")
           elem_selection = arg(elem_selection, "id", value["id"])
           %Dagger.TypeDef{selection: elem_selection, client: module.client}
         end)}
      end
    end
  )

  (
    @doc ""
    @spec name(t()) :: {:ok, Dagger.String.t()} | {:error, term()}
    def name(%__MODULE__{} = module) do
      selection = select(module.selection, "name")
      execute(selection, module.client)
    end
  )

  (
    @doc ""
    @spec objects(t()) :: {:ok, [Dagger.TypeDef.t()]} | {:error, term()}
    def objects(%__MODULE__{} = module) do
      selection = select(module.selection, "objects")

      selection =
        select(
          selection,
          "asInput asInterface asList asObject id kind optional withConstructor withField withFunction withInterface withKind withListOf withObject withOptional"
        )

      with {:ok, data} <- execute(selection, module.client) do
        {:ok,
         data
         |> Enum.map(fn value ->
           elem_selection = Dagger.QueryBuilder.Selection.query()
           elem_selection = select(elem_selection, "loadTypeDefFromID")
           elem_selection = arg(elem_selection, "id", value["id"])
           %Dagger.TypeDef{selection: elem_selection, client: module.client}
         end)}
      end
    end
  )

  (
    @doc ""
    @spec sdk(t()) :: {:ok, Dagger.String.t()} | {:error, term()}
    def sdk(%__MODULE__{} = module) do
      selection = select(module.selection, "sdk")
      execute(selection, module.client)
    end
  )

  (
    @doc "Serve a module's API in the current session.\n\nNote: this can only be called once per session. In the future, it could return a stream or service to remove the side effect."
    @spec serve(t()) :: {:ok, Dagger.Void.t() | nil} | {:error, term()}
    def serve(%__MODULE__{} = module) do
      selection = select(module.selection, "serve")
      execute(selection, module.client)
    end
  )

  (
    @doc ""
    @spec source_directory(t()) :: Dagger.Directory.t()
    def source_directory(%__MODULE__{} = module) do
      selection = select(module.selection, "sourceDirectory")
      %Dagger.Directory{selection: selection, client: module.client}
    end
  )

  (
    @doc ""
    @spec source_directory_subpath(t()) :: {:ok, Dagger.String.t()} | {:error, term()}
    def source_directory_subpath(%__MODULE__{} = module) do
      selection = select(module.selection, "sourceDirectorySubpath")
      execute(selection, module.client)
    end
  )

  (
    @doc "This module plus the given Interface type and associated functions\n\n## Required Arguments\n\n* `iface` -"
    @spec with_interface(t(), Dagger.TypeDef.t()) :: Dagger.Module.t()
    def with_interface(%__MODULE__{} = module, iface) do
      selection = select(module.selection, "withInterface")

      (
        {:ok, id} = Dagger.TypeDef.id(iface)
        selection = arg(selection, "iface", id)
      )

      %Dagger.Module{selection: selection, client: module.client}
    end
  )

  (
    @doc "This module plus the given Object type and associated functions.\n\n## Required Arguments\n\n* `object` -"
    @spec with_object(t(), Dagger.TypeDef.t()) :: Dagger.Module.t()
    def with_object(%__MODULE__{} = module, object) do
      selection = select(module.selection, "withObject")

      (
        {:ok, id} = Dagger.TypeDef.id(object)
        selection = arg(selection, "object", id)
      )

      %Dagger.Module{selection: selection, client: module.client}
    end
  )

  (
    @doc "Retrieves the module with basic configuration loaded, ready for initialization.\n\n## Required Arguments\n\n* `directory` - The directory containing the module's source code.\n\n## Optional Arguments\n\n* `subpath` - An optional subpath of the directory which contains the module's source code.\n\nThis is needed when the module code is in a subdirectory but requires parent directories to be loaded in order to execute. For example, the module source code may need a go.mod, project.toml, package.json, etc. file from a parent directory.\n\nIf not set, the module source code is loaded from the root of the directory."
    @spec with_source(t(), Dagger.Directory.t(), keyword()) :: Dagger.Module.t()
    def with_source(%__MODULE__{} = module, directory, optional_args \\ []) do
      selection = select(module.selection, "withSource")

      (
        {:ok, id} = Dagger.Directory.id(directory)
        selection = arg(selection, "directory", id)
      )

      selection =
        if is_nil(optional_args[:subpath]) do
          selection
        else
          arg(selection, "subpath", optional_args[:subpath])
        end

      %Dagger.Module{selection: selection, client: module.client}
    end
  )
end
