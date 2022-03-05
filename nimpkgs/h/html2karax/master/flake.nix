{
  description = ''Converts html to karax.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-html2karax-master.flake = false;
  inputs.src-html2karax-master.type = "github";
  inputs.src-html2karax-master.owner = "nim-lang-cn";
  inputs.src-html2karax-master.repo = "html2karax";
  inputs.src-html2karax-master.ref = "refs/heads/master";
  inputs.src-html2karax-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-html2karax-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-html2karax-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-html2karax-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}