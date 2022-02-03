{
  description = ''Nim interface to plotly'';
  inputs.src-plotly-v0_2_0.flake = false;
  inputs.src-plotly-v0_2_0.type = "github";
  inputs.src-plotly-v0_2_0.owner = "SciNim";
  inputs.src-plotly-v0_2_0.repo = "nim-plotly";
  inputs.src-plotly-v0_2_0.ref = "refs/tags/v0.2.0";
  
  
  inputs."chroma".url = "path:../../../c/chroma";
  inputs."chroma".type = "github";
  inputs."chroma".owner = "riinr";
  inputs."chroma".repo = "flake-nimble";
  inputs."chroma".ref = "flake-pinning";
  inputs."chroma".dir = "nimpkgs/c/chroma";

  
  inputs."jsbind".url = "path:../../../j/jsbind";
  inputs."jsbind".type = "github";
  inputs."jsbind".owner = "riinr";
  inputs."jsbind".repo = "flake-nimble";
  inputs."jsbind".ref = "flake-pinning";
  inputs."jsbind".dir = "nimpkgs/j/jsbind";

  
  inputs."webview".url = "path:../../../w/webview";
  inputs."webview".type = "github";
  inputs."webview".owner = "riinr";
  inputs."webview".repo = "flake-nimble";
  inputs."webview".ref = "flake-pinning";
  inputs."webview".dir = "nimpkgs/w/webview";

  
  inputs."websocket".url = "path:../../../w/websocket";
  inputs."websocket".type = "github";
  inputs."websocket".owner = "riinr";
  inputs."websocket".repo = "flake-nimble";
  inputs."websocket".ref = "flake-pinning";
  inputs."websocket".dir = "nimpkgs/w/websocket";

  outputs = { self, nixpkgs, src-plotly-v0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-plotly-v0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-plotly-v0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}