{
  description = ''Converts html to karax.'';
  inputs.src-html2karax-master.flake = false;
  inputs.src-html2karax-master.type = "github";
  inputs.src-html2karax-master.owner = "nim-lang-cn";
  inputs.src-html2karax-master.repo = "html2karax";
  inputs.src-html2karax-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-html2karax-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-html2karax-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-html2karax-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}