{
  description = ''This is a xlsxio wrapper done Nim in mind.'';
  inputs.src-xlsxio-main.flake = false;
  inputs.src-xlsxio-main.type = "github";
  inputs.src-xlsxio-main.owner = "jiiihpeeh";
  inputs.src-xlsxio-main.repo = "xlsxio-nim";
  inputs.src-xlsxio-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-xlsxio-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsxio-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xlsxio-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}