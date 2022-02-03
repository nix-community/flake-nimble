{
  description = ''Converts html to karax.'';
  inputs.src-html2karax-v1_1_2.flake = false;
  inputs.src-html2karax-v1_1_2.type = "github";
  inputs.src-html2karax-v1_1_2.owner = "nim-lang-cn";
  inputs.src-html2karax-v1_1_2.repo = "html2karax";
  inputs.src-html2karax-v1_1_2.ref = "refs/tags/v1.1.2";
  
  outputs = { self, nixpkgs, src-html2karax-v1_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-html2karax-v1_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-html2karax-v1_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}