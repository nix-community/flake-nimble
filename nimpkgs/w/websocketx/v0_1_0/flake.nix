{
  description = ''Websocket for httpx.'';
  inputs.src-websocketx-v0_1_0.flake = false;
  inputs.src-websocketx-v0_1_0.type = "github";
  inputs.src-websocketx-v0_1_0.owner = "xflywind";
  inputs.src-websocketx-v0_1_0.repo = "websocketx";
  inputs.src-websocketx-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
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

  outputs = { self, nixpkgs, src-websocketx-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocketx-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-websocketx-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}