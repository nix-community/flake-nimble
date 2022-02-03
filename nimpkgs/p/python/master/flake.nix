{
  description = ''Wrapper to interface with Python interpreter'';
  inputs.src-python-master.flake = false;
  inputs.src-python-master.type = "github";
  inputs.src-python-master.owner = "nim-lang";
  inputs.src-python-master.repo = "python";
  inputs.src-python-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-python-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-python-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-python-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}