{
  description = ''fastText wrapper for Nim'';
  inputs.src-nimfastText-master.flake = false;
  inputs.src-nimfastText-master.type = "github";
  inputs.src-nimfastText-master.owner = "genotrance";
  inputs.src-nimfastText-master.repo = "nimfastText";
  inputs.src-nimfastText-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".url = "path:../../../n/nimgen";
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  outputs = { self, nixpkgs, src-nimfastText-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimfastText-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimfastText-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}