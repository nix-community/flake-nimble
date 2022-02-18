{
  description = ''LibFixMath 16:16 fixed point support for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-fixmath-master.flake = false;
  inputs.src-fixmath-master.type = "github";
  inputs.src-fixmath-master.owner = "jeff-Ciesielski";
  inputs.src-fixmath-master.repo = "fixmath";
  inputs.src-fixmath-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-fixmath-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-fixmath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-fixmath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}