{
  description = ''Converts html to karax.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-html2karax-v1_0_1.flake = false;
  inputs.src-html2karax-v1_0_1.type = "github";
  inputs.src-html2karax-v1_0_1.owner = "nim-lang-cn";
  inputs.src-html2karax-v1_0_1.repo = "html2karax";
  inputs.src-html2karax-v1_0_1.ref = "refs/tags/v1.0.1";
  inputs.src-html2karax-v1_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-html2karax-v1_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-html2karax-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-html2karax-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}