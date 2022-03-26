defmodule RustMarkdown do
  @moduledoc """
  NIF wrapper for the Rust crate `markdown`.
  """

  use Rustler,
    otp_app: :rust_markdown

  # When loading a NIF module, dummy clauses for all NIF function are required.
  # NIF dummies usually just error out when called when the NIF is not loaded, as that should never normally happen.
  def as_html(_makrdown), do: :erlang.nif_error(:nif_not_loaded)

end
