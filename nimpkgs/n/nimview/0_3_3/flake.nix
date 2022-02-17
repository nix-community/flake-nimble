{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';
  inputs.src-nimview-0_3_3.flake = false;
  inputs.src-nimview-0_3_3.type = "github";
  inputs.src-nimview-0_3_3.owner = "marcomq";
  inputs.src-nimview-0_3_3.repo = "nimview";
  inputs.src-nimview-0_3_3.ref = "refs/tags/0.3.3";
  
  
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  outputs = { self, nixpkgs, src-nimview-0_3_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimview-0_3_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimview-0_3_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}