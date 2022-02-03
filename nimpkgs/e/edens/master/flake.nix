{
  description = ''A command to encode / decode text with your dictionary'';
  inputs.src-edens-master.flake = false;
  inputs.src-edens-master.type = "github";
  inputs.src-edens-master.owner = "jiro4989";
  inputs.src-edens-master.repo = "edens";
  inputs.src-edens-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-edens-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-edens-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-edens-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}