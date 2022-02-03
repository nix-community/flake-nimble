{
  description = ''utf-8 string'';
  inputs.src-ustring-0_2_2.flake = false;
  inputs.src-ustring-0_2_2.type = "github";
  inputs.src-ustring-0_2_2.owner = "rokups";
  inputs.src-ustring-0_2_2.repo = "nim-ustring";
  inputs.src-ustring-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-ustring-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ustring-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ustring-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}