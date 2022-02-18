{
  description = ''A wrapper for the zip library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zip-master.flake = false;
  inputs.src-zip-master.type = "github";
  inputs.src-zip-master.owner = "nim-lang";
  inputs.src-zip-master.repo = "zip";
  inputs.src-zip-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-zip-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}