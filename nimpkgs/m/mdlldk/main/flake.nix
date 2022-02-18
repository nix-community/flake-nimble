{
  description = ''Dynamic-link libraries (DLLs) Development Kit for mIRC.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mdlldk-main.flake = false;
  inputs.src-mdlldk-main.type = "github";
  inputs.src-mdlldk-main.owner = "rockcavera";
  inputs.src-mdlldk-main.repo = "nim-mdlldk";
  inputs.src-mdlldk-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mdlldk-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mdlldk-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mdlldk-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}