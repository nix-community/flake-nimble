{
  description = ''Simple database generator, connector and query tools.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zfdbms-v0_0_7.flake = false;
  inputs.src-zfdbms-v0_0_7.type = "github";
  inputs.src-zfdbms-v0_0_7.owner = "zendbit";
  inputs.src-zfdbms-v0_0_7.repo = "nim.zfdbms";
  inputs.src-zfdbms-v0_0_7.ref = "refs/tags/v0.0.7";
  
  
  inputs."stdext".type = "github";
  inputs."stdext".owner = "riinr";
  inputs."stdext".repo = "flake-nimble";
  inputs."stdext".ref = "flake-pinning";
  inputs."stdext".dir = "nimpkgs/s/stdext";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfdbms-v0_0_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfdbms-v0_0_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfdbms-v0_0_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}