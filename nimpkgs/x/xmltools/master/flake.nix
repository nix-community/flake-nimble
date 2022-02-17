{
  description = ''High level xml library for Nim'';
  inputs.src-xmltools-master.flake = false;
  inputs.src-xmltools-master.type = "github";
  inputs.src-xmltools-master.owner = "vegansk";
  inputs.src-xmltools-master.repo = "xmltools";
  inputs.src-xmltools-master.ref = "refs/heads/master";
  
  
  inputs."nimfp".type = "github";
  inputs."nimfp".owner = "riinr";
  inputs."nimfp".repo = "flake-nimble";
  inputs."nimfp".ref = "flake-pinning";
  inputs."nimfp".dir = "nimpkgs/n/nimfp";

  
  inputs."nimboost".type = "github";
  inputs."nimboost".owner = "riinr";
  inputs."nimboost".repo = "flake-nimble";
  inputs."nimboost".ref = "flake-pinning";
  inputs."nimboost".dir = "nimpkgs/n/nimboost";

  outputs = { self, nixpkgs, src-xmltools-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xmltools-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xmltools-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}