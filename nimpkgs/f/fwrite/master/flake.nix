{
  description = ''Create files of the desired size'';
  inputs.src-fwrite-master.flake = false;
  inputs.src-fwrite-master.type = "github";
  inputs.src-fwrite-master.owner = "pdrb";
  inputs.src-fwrite-master.repo = "nim-fwrite";
  inputs.src-fwrite-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-fwrite-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fwrite-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-fwrite-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}