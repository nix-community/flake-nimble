{
  description = ''Frida wrapper'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-frida-master.flake = false;
  inputs.src-frida-master.type = "github";
  inputs.src-frida-master.owner = "ba0f3";
  inputs.src-frida-master.repo = "frida.nim";
  inputs.src-frida-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-frida-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-frida-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-frida-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}