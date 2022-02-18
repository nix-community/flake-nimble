{
  description = ''A loose, direct to object json parser with hooks.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jsony-0_0_4.flake = false;
  inputs.src-jsony-0_0_4.type = "github";
  inputs.src-jsony-0_0_4.owner = "treeform";
  inputs.src-jsony-0_0_4.repo = "jsony";
  inputs.src-jsony-0_0_4.ref = "refs/tags/0.0.4";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-jsony-0_0_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jsony-0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jsony-0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}