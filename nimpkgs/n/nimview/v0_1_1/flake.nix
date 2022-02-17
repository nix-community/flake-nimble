{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';
  inputs.src-nimview-v0_1_1.flake = false;
  inputs.src-nimview-v0_1_1.type = "github";
  inputs.src-nimview-v0_1_1.owner = "marcomq";
  inputs.src-nimview-v0_1_1.repo = "nimview";
  inputs.src-nimview-v0_1_1.ref = "refs/tags/v0.1.1";
  
  
  inputs."jester".type = "github";
  inputs."jester".owner = "riinr";
  inputs."jester".repo = "flake-nimble";
  inputs."jester".ref = "flake-pinning";
  inputs."jester".dir = "nimpkgs/j/jester";

  
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

  outputs = { self, nixpkgs, src-nimview-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimview-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimview-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}