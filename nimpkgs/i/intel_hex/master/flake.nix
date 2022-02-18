{
  description = ''Intel hex file utility library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-intel_hex-master.flake = false;
  inputs.src-intel_hex-master.type = "github";
  inputs.src-intel_hex-master.owner = "keyme";
  inputs.src-intel_hex-master.repo = "nim_intel_hex";
  inputs.src-intel_hex-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-intel_hex-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-intel_hex-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-intel_hex-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}