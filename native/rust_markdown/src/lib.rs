use pulldown_cmark::{Parser, html};

#[rustler::nif]
fn as_html(text: &str) -> String {
    let parser = Parser::new(text);
    let mut html_output = String::new();
    html::push_html(&mut html_output, parser);
    html_output
}

rustler::init!("Elixir.RustMarkdown", [as_html]);
