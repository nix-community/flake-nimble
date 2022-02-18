{
  description = ''A port of libnx to Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-libnx-master.flake = false;
  inputs.src-libnx-master.type = "github";
  inputs.src-libnx-master.owner = "jyapayne";
  inputs.src-libnx-master.repo = "nim-libnx";
  inputs.src-libnx-master.ref = "refs/heads/master";
  
  
  inputs."nimgen".type = "github";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".repo = "flake-nimble";
  inputs."nimgen".ref = "flake-pinning";
  inputs."nimgen".dir = "nimpkgs/n/nimgen";

  
  inputs."switch_build".type = "github";
  inputs."switch_build".owner = "riinr";
  inputs."switch_build".repo = "flake-nimble";
  inputs."switch_build".ref = "flake-pinning";
  inputs."switch_build".dir = "nimpkgs/s/switch_build";

  outputs = { self, nixpkgs, flakeNimbleLib, src-libnx-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libnx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-libnx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}