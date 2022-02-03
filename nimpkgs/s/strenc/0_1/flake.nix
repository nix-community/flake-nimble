{
  description = ''A library to automatically encrypt all string constants in your programs'';
  inputs.src-strenc-0_1.flake = false;
  inputs.src-strenc-0_1.type = "github";
  inputs.src-strenc-0_1.owner = "Yardanico";
  inputs.src-strenc-0_1.repo = "nim-strenc";
  inputs.src-strenc-0_1.ref = "refs/tags/0.1";
  
  outputs = { self, nixpkgs, src-strenc-0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-strenc-0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-strenc-0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}