{
  description = ''Websocket for httpx.'';
  inputs.src-websocketx-master.flake = false;
  inputs.src-websocketx-master.type = "github";
  inputs.src-websocketx-master.owner = "xflywind";
  inputs.src-websocketx-master.repo = "websocketx";
  inputs.src-websocketx-master.ref = "refs/heads/master";
  
  
  inputs."ws".url = "path:../../../w/ws";
  inputs."ws".type = "github";
  inputs."ws".owner = "riinr";
  inputs."ws".repo = "flake-nimble";
  inputs."ws".ref = "flake-pinning";
  inputs."ws".dir = "nimpkgs/w/ws";

  
  inputs."httpx".url = "path:../../../h/httpx";
  inputs."httpx".type = "github";
  inputs."httpx".owner = "riinr";
  inputs."httpx".repo = "flake-nimble";
  inputs."httpx".ref = "flake-pinning";
  inputs."httpx".dir = "nimpkgs/h/httpx";

  outputs = { self, nixpkgs, src-websocketx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-websocketx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-websocketx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}