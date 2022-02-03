{
  description = ''Simple method of obtaining secure random numbers from the OS'';
  inputs.src-urand-master.flake = false;
  inputs.src-urand-master.type = "github";
  inputs.src-urand-master.owner = "Matceporial";
  inputs.src-urand-master.repo = "nim-urand";
  inputs.src-urand-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-urand-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-urand-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-urand-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}