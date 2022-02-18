{
  description = ''A compact dictionary implementation'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-compactdict-master.flake = false;
  inputs.src-compactdict-master.type = "github";
  inputs.src-compactdict-master.owner = "LemonBoy";
  inputs.src-compactdict-master.repo = "compactdict";
  inputs.src-compactdict-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-compactdict-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-compactdict-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-compactdict-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}