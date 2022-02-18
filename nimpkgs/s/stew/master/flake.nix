{
  description = ''stew is collection of utilities, std library extensions and budding libraries that are frequently used at Status, but are too small to deserve their own git repository.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-stew-master.flake = false;
  inputs.src-stew-master.type = "github";
  inputs.src-stew-master.owner = "status-im";
  inputs.src-stew-master.repo = "nim-stew";
  inputs.src-stew-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-stew-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-stew-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-stew-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}