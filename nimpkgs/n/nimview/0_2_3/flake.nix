{
  description = ''Nim / Python / C library to run webview with HTML/JS as UI'';
  inputs.src-nimview-0_2_3.flake = false;
  inputs.src-nimview-0_2_3.type = "github";
  inputs.src-nimview-0_2_3.owner = "marcomq";
  inputs.src-nimview-0_2_3.repo = "nimview";
  inputs.src-nimview-0_2_3.ref = "refs/tags/0.2.3";
  
  
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

  outputs = { self, nixpkgs, src-nimview-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimview-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimview-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}