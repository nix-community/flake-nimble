{
  description = ''faker is a Nim package that generates fake data for you.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-faker-master.flake = false;
  inputs.src-faker-master.type = "github";
  inputs.src-faker-master.owner = "jiro4989";
  inputs.src-faker-master.repo = "faker";
  inputs.src-faker-master.ref = "refs/heads/master";
  inputs.src-faker-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-faker-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-faker-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-faker-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}