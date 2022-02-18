{
  description = ''A wrapper for libui'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-ui-master.flake = false;
  inputs.src-ui-master.type = "github";
  inputs.src-ui-master.owner = "nim-lang";
  inputs.src-ui-master.repo = "ui";
  inputs.src-ui-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ui-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ui-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ui-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}