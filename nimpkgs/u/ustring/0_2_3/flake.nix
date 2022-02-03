{
  description = ''utf-8 string'';
  inputs.src-ustring-0_2_3.flake = false;
  inputs.src-ustring-0_2_3.type = "github";
  inputs.src-ustring-0_2_3.owner = "rokups";
  inputs.src-ustring-0_2_3.repo = "nim-ustring";
  inputs.src-ustring-0_2_3.ref = "refs/tags/0.2.3";
  
  outputs = { self, nixpkgs, src-ustring-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ustring-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ustring-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}