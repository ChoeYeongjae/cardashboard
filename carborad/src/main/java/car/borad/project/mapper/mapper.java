package car.borad.project.mapper;

import java.util.List;

import car.borad.project.vo.object;

public interface mapper {
	public List<object> getAll() throws Exception;
	public void postMember(Object object) throws Exception;

}
