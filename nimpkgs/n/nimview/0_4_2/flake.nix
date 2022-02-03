{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';
  inputs.src-nimview-0_4_2.flake = false;
  inputs.src-nimview-0_4_2.type = "github";
  inputs.src-nimview-0_4_2.owner = "marcomq";
  inputs.src-nimview-0_4_2.repo = "nimview";
  inputs.src-nimview-0_4_2.ref = "refs/tags/0.4.2";
  
  
  inputs."nimpy".url = "path:../../../n/nimpy";
  inputs."nimpy".type = "github";
  inputs."nimpy".owner = "riinr";
  inputs."nimpy".repo = "flake-nimble";
  inputs."nimpy".ref = "flake-pinning";
  inputs."nimpy".dir = "nimpkgs/n/nimpy";

  
  inputs."nake".url = "path:../../../n/nake";
  inputs."nake".type = "github";
  inputs."nake".owner = "riinr";
  inputs."nake".repo = "flake-nimble";
  inputs."nake".ref = "flake-pinning";
  inputs."nake".dir = "nimpkgs/n/nake";

  
  inputs."ws".url = "path:../../../w/ws";
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  outputs = { self, nixpkgs, src-nimview-0_4_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimview-0_4_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimview-0_4_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}