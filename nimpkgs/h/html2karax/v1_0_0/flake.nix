{
  description = ''Converts html to karax.'';
  inputs.src-html2karax-v1_0_0.flake = false;
  inputs.src-html2karax-v1_0_0.type = "github";
  inputs.src-html2karax-v1_0_0.owner = "nim-lang-cn";
  inputs.src-html2karax-v1_0_0.repo = "html2karax";
  inputs.src-html2karax-v1_0_0.ref = "refs/tags/v1.0.0";
  
  outputs = { self, nixpkgs, src-html2karax-v1_0_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-html2karax-v1_0_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-html2karax-v1_0_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}