{
  description = ''Argument parser'';
  inputs.src-nap-master.flake = false;
  inputs.src-nap-master.type = "github";
  inputs.src-nap-master.owner = "madprops";
  inputs.src-nap-master.repo = "nap";
  inputs.src-nap-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nap-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nap-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nap-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}