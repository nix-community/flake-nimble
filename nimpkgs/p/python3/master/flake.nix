{
  description = ''Wrapper to interface with the Python 3 interpreter'';
  inputs.src-python3-master.flake = false;
  inputs.src-python3-master.type = "github";
  inputs.src-python3-master.owner = "matkuki";
  inputs.src-python3-master.repo = "python3";
  inputs.src-python3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-python3-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-python3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-python3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}