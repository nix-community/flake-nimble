{
  description = ''A library to automatically encrypt all string constants in your programs'';
  inputs.src-strenc-master.flake = false;
  inputs.src-strenc-master.type = "github";
  inputs.src-strenc-master.owner = "Yardanico";
  inputs.src-strenc-master.repo = "nim-strenc";
  inputs.src-strenc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-strenc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-strenc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-strenc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}