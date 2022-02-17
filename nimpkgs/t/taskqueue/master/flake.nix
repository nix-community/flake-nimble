{
  description = ''High precision and high performance task scheduler '';
  inputs.src-taskqueue-master.flake = false;
  inputs.src-taskqueue-master.type = "github";
  inputs.src-taskqueue-master.owner = "jackhftang";
  inputs.src-taskqueue-master.repo = "taskqueue.nim";
  inputs.src-taskqueue-master.ref = "refs/heads/master";
  
  
  inputs."timestamp".type = "github";
  inputs."timestamp".owner = "riinr";
  inputs."timestamp".repo = "flake-nimble";
  inputs."timestamp".ref = "flake-pinning";
  inputs."timestamp".dir = "nimpkgs/t/timestamp";

  outputs = { self, nixpkgs, src-taskqueue-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-taskqueue-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-taskqueue-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}