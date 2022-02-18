{
  description = ''Nim interface to plotly'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-plotly-v0_2_0.flake = false;
  inputs.src-plotly-v0_2_0.type = "github";
  inputs.src-plotly-v0_2_0.owner = "SciNim";
  inputs.src-plotly-v0_2_0.repo = "nim-plotly";
  inputs.src-plotly-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."jsbind".type = "github";
  inputs."jsbind".owner = "riinr";
  inputs."jsbind".repo = "flake-nimble";
  inputs."jsbind".ref = "flake-pinning";
  inputs."jsbind".dir = "nimpkgs/j/jsbind";

  
  inputs."webview".type = "github";
  inputs."webview".owner = "riinr";
  inputs."webview".repo = "flake-nimble";
  inputs."webview".ref = "flake-pinning";
  inputs."webview".dir = "nimpkgs/w/webview";

  
  inputs."websocket".type = "github";
  inputs."websocket".owner = "riinr";
  inputs."websocket".repo = "flake-nimble";
  inputs."websocket".ref = "flake-pinning";
  inputs."websocket".dir = "nimpkgs/w/websocket";

  outputs = { self, nixpkgs, flakeNimbleLib, src-plotly-v0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plotly-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-plotly-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}