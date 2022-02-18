{
  description = ''Websocket for httpx.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-websocketx-v0_1_2.flake = false;
  inputs.src-websocketx-v0_1_2.type = "github";
  inputs.src-websocketx-v0_1_2.owner = "xflywind";
  inputs.src-websocketx-v0_1_2.repo = "websocketx";
  inputs.src-websocketx-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  
  inputs."httpx".type = "github";
  inputs."httpx".owner = "riinr";
  inputs."httpx".repo = "flake-nimble";
  inputs."httpx".ref = "flake-pinning";
  inputs."httpx".dir = "nimpkgs/h/httpx";

  outputs = { self, nixpkgs, flakeNimbleLib, src-websocketx-v0_1_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocketx-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-websocketx-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}