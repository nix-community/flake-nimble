{
  description = ''Firejail wrapper for Nim, Isolate your Production App before its too late!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-firejail-master.flake = false;
  inputs.src-firejail-master.type = "github";
  inputs.src-firejail-master.owner = "juancarlospaco";
  inputs.src-firejail-master.repo = "nim-firejail";
  inputs.src-firejail-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-firejail-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-firejail-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-firejail-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}