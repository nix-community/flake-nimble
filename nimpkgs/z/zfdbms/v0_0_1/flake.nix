{
  description = ''Simple database generator, connector and query tools.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-zfdbms-v0_0_1.flake = false;
  inputs.src-zfdbms-v0_0_1.type = "github";
  inputs.src-zfdbms-v0_0_1.owner = "zendbit";
  inputs.src-zfdbms-v0_0_1.repo = "nim.zfdbms";
  inputs.src-zfdbms-v0_0_1.ref = "refs/tags/v0.0.1";
  
  
  inputs."stdext".type = "github";
  inputs."stdext".owner = "riinr";
  inputs."stdext".repo = "flake-nimble";
  inputs."stdext".ref = "flake-pinning";
  inputs."stdext".dir = "nimpkgs/s/stdext";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zfdbms-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfdbms-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zfdbms-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}