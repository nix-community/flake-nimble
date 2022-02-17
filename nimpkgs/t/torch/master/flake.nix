{
  description = ''A nim flavor of pytorch'';
  inputs.src-torch-master.flake = false;
  inputs.src-torch-master.type = "github";
  inputs.src-torch-master.owner = "fragcolor-xyz";
  inputs.src-torch-master.repo = "nimtorch";
  inputs.src-torch-master.ref = "refs/heads/master";
  
  
  inputs."fragments".type = "github";
  inputs."fragments".owner = "riinr";
  inputs."fragments".repo = "flake-nimble";
  inputs."fragments".ref = "flake-pinning";
  inputs."fragments".dir = "nimpkgs/f/fragments";

  outputs = { self, nixpkgs, src-torch-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-torch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-torch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}