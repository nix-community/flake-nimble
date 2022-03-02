{
  description = ''Very simple browser Javascript TTY web terminal'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-webterminal-master.flake = false;
  inputs.src-webterminal-master.type = "github";
  inputs.src-webterminal-master.owner = "JohnAD";
  inputs.src-webterminal-master.repo = "webterminal";
  inputs.src-webterminal-master.ref = "refs/heads/master";
  inputs.src-webterminal-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-webterminal-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webterminal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-webterminal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}