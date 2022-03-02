{
  description = ''Thin lib to find if chrome exists on Windows, Mac, or Linux.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimchromepath-master.flake = false;
  inputs.src-nimchromepath-master.type = "github";
  inputs.src-nimchromepath-master.owner = "felipetesc";
  inputs.src-nimchromepath-master.repo = "NimChromePath";
  inputs.src-nimchromepath-master.ref = "refs/heads/master";
  inputs.src-nimchromepath-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimchromepath-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimchromepath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimchromepath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}