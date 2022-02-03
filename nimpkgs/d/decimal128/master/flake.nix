{
  description = ''Decimal type support based on the IEEE 754 2008 specification.'';
  inputs.src-decimal128-master.flake = false;
  inputs.src-decimal128-master.type = "github";
  inputs.src-decimal128-master.owner = "JohnAD";
  inputs.src-decimal128-master.repo = "decimal128";
  inputs.src-decimal128-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-decimal128-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-decimal128-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-decimal128-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}