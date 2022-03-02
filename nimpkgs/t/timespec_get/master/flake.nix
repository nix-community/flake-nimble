{
  description = ''Nanosecond-percision time using timespec_get'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-timespec_get-master.flake = false;
  inputs.src-timespec_get-master.type = "github";
  inputs.src-timespec_get-master.owner = "Matceporial";
  inputs.src-timespec_get-master.repo = "nim-timespec_get";
  inputs.src-timespec_get-master.ref = "refs/heads/master";
  inputs.src-timespec_get-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-timespec_get-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timespec_get-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-timespec_get-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}