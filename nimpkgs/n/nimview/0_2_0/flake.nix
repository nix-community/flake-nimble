{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimview-0_2_0.flake = false;
  inputs.src-nimview-0_2_0.type = "github";
  inputs.src-nimview-0_2_0.owner = "marcomq";
  inputs.src-nimview-0_2_0.repo = "nimview";
  inputs.src-nimview-0_2_0.ref = "refs/tags/0.2.0";
  
  
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  
  inputs."webview".type = "github";
  inputs."webview".owner = "riinr";
  inputs."webview".repo = "flake-nimble";
  inputs."webview".ref = "flake-pinning";
  inputs."webview".dir = "nimpkgs/w/webview";

  
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimview-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimview-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimview-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}