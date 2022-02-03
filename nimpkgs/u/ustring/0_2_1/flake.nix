{
  description = ''utf-8 string'';
  inputs.src-ustring-0_2_1.flake = false;
  inputs.src-ustring-0_2_1.type = "github";
  inputs.src-ustring-0_2_1.owner = "rokups";
  inputs.src-ustring-0_2_1.repo = "nim-ustring";
  inputs.src-ustring-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-ustring-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ustring-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ustring-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}