{
  description = ''Simple wrapper of the Imlib2 library'';
  inputs.src-imlib2-master.flake = false;
  inputs.src-imlib2-master.type = "github";
  inputs.src-imlib2-master.owner = "PMunch";
  inputs.src-imlib2-master.repo = "Imlib2";
  inputs.src-imlib2-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-imlib2-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imlib2-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-imlib2-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}