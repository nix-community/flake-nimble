{
  description = ''Template generator for gester'';
  inputs.src-nim_exodus-master.flake = false;
  inputs.src-nim_exodus-master.type = "github";
  inputs.src-nim_exodus-master.owner = "shinriyo";
  inputs.src-nim_exodus-master.repo = "nim_exodus";
  inputs.src-nim_exodus-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nim_exodus-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nim_exodus-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nim_exodus-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}