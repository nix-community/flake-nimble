{
  description = ''Cryptographic signing for Nim.'';
  inputs.src-gungnir-master.flake = false;
  inputs.src-gungnir-master.type = "github";
  inputs.src-gungnir-master.owner = "planety";
  inputs.src-gungnir-master.repo = "gungnir";
  inputs.src-gungnir-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-gungnir-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-gungnir-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-gungnir-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}