{
  description = ''Luhn's Algorithm implementation in Nim'';
  inputs.src-luhny-master.flake = false;
  inputs.src-luhny-master.type = "github";
  inputs.src-luhny-master.owner = "sigmapie8";
  inputs.src-luhny-master.repo = "luhny";
  inputs.src-luhny-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-luhny-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-luhny-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-luhny-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}